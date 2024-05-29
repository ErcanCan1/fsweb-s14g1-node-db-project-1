const db = require("../../data/db-config");

const getAll = () => {
  // KODLAR BURAYA
  //select * from accounts
  return db.('accounts');
}

const getById = id => {
  // KODLAR BURAYA
  //select * from accounts where id = id
  return db('accounts').where({id}).first();
}

const create = account => {
  // KODLAR BURAYA
  // insert into account values (id, name, budget)
  const insertedAccount = db('accounts').insert(account).then(id => {
    return getById(id[0]);
  });
  return insertedAccount;
}

const updateById = (id, account) => {
  // KODLAR BURAYA
  //update accounts set name=account.name, budget= account.budget where id=id
  return db('accounts').where({id}).update(account).then(rows => {return getById(id);});
}

const deleteById = id => {
  // KODLAR BURAYA
  //delete from accounts where id = id
  return db('accounts')
  .where('id', id)
  .del();
}

module.exports = {
  getAll,
  getById,
  create,
  updateById,
  deleteById,
}
